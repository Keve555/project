async function insertData(url,config,render){
    try{
        const response=await fetch(url,config)
    const data=await response.json()
    render(data)
    }catch(err){
        console.log(err)
    }
    
}

function insertUser(e) {
    e.preventDefault();
    //console.log("Küldés");
    let email=document.getElementById("email").value
    let hiba=ellenorzes(email)
    if(hiba.length>0){
        //console.log(hiba)
        let str=""
        for(let h of hiba){
            str+=`
                <li>${h}</li>
            `
        }
        document.querySelector(".msg").innerHTML=str
    }
    else{
    //console.log(email)
    let formdata=new FormData();
    formdata.append("email",email);
    let config={
        method:"POST",
        body:formdata
    }
    insertData("../server/insertemail.php",config,rendermsg)
}
}
function rendermsg(data){
    //console.log(data)
    document.querySelector(".msg").innerHTML=data.msg
}
function ellenorzes(email){
    //console.log(email)
let errors=[]
if(email.length<5)
    errors.push("A email cím túl rövid.")
let validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/; 
if(!validRegex.test(email))
    errors.push("Igazi email címnek kell lennie.")
//console.log(email)
return errors;
}

module.exports = ellenorzes