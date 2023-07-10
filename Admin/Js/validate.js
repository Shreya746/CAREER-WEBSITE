function validate(){  
    var name=document.myform.name.value;  
    var about=document.myform.about.value;  
    
  if (name==null || name==""){  
    alert("name can't be blank"); 
    return false;  
  }else if(about==null || about ==""){  
    alert("Please mention 2 lines about the college");  
    return false;  
    }  
  }  