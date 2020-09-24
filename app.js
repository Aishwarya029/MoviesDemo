const { query } = require('express');
const express = require ('express');
const app=express();

var mysql = require('mysql');
const port=3000



class Database {
  constructor( config ) {
      this.connection = mysql.createConnection( config );
  }
  query( sql, args ) {
      return new Promise( ( resolve, reject ) => {
          this.connection.query( sql, args, ( err, rows ) => {
              if ( err )
                  return reject( err );
              resolve( rows );
          } );
      } );
  }
  close() {
      return new Promise( ( resolve, reject ) => {
          this.connection.end( err => {
              if ( err )
                  return reject( err );
              resolve();
          } );
      } );
  }
}

const database = new Database({
  host: "localhost",
  user: "movietest",
  password: "1qaz!QAZ",
  database: "movies",
  port: 3306,
  insecureAuth : true
})

app.use(express.static('public'))

app.get('/',function(req,res){
  database.query( 'SELECT * FROM category' ).then( rows => {
    res.render("homepage.ejs",{ categories: rows })
    
    });
  

})






app.get('/movies',function(req,res){
    var category_id= req.query.id
    var backimage
    var title
    database.query( 'SELECT * FROM category where id='+category_id ).then( rows => {
        backimage = rows[0].background
        title = rows[0].title
    });
    
    database.query( 'SELECT * FROM movie where category_id='+category_id ).then( rows => {
     res.render("movies.ejs",{ movie: rows,backimage: backimage,title:title})    
   
    });
     

})

app.get('/movies/result',function(req,res){
    var movie_id= req.query.id
    var movie_name
    database.query( 'SELECT * FROM movie where  id='+movie_id ).then( rows => {
        movie_name=rows[0].movie_name
        
    }); 
    database.query( 'SELECT * FROM result where movie_id='+movie_id ).then( rows => {
    res.render("result.ejs",{ result: rows,movie_name:movie_name })
});    
})

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
  })