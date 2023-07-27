function demo(){
    x=document.getElementById('t1').value;
    if(x.length>=5){
     form1.submit();   
    }
    else{
     document.getElementById('s1').innerHTML="invalid";
    }
    
    
}