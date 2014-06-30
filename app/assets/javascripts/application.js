// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
function change1(value){
	if(value == 1){
       
      $("#search_field").show();
      $("#search_age_field").hide();  
      $("#search_country_field").hide();  
      
       
	}else if(value == 2){
     
     $("#search_field").hide(); 
     $("#search_age_field").show(); 
     $("#search_country_field").hide(); 
    }
 else if(value == 3){
  
     $("#search_field").hide(); 
     $("#search_age_field").hide(); 
     $("#search_country_field").show(); 

 }
 

   }
  
 // 

