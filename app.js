const { query } = require('express');
const express = require ('express');
const app=express();

var mysql = require('mysql');



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
  database: "movies"
})

app.use(express.static('public'))

app.get('/',function(req,res){

  database.query( 'SELECT * FROM category' ).then( rows => {
    console.log("df")
    res.render("homepage.ejs",{ categories: rows })
  });    
})






app.get('/movies',function(req,res){
    var category_id= req.query.id
    database.query( 'SELECT * FROM movie where category_id='+category_id ).then( rows => {
     res.render("movies.ejs",{ movie: rows })
 });    
})

app.get('/movies/result',function(req,res){
    var movie_id= req.query.id
    database.query( 'SELECT * FROM result where movie_id='+movie_id ).then( rows => {
    res.render("result.ejs",{ result: rows })
});    
})

app.listen(3000,function(req,res){
    console.log("hsqush")
});