<h1>Hírlevél</h1>
<p class="kozep">Amennyiben szeretne értesülni a weboldal frissítéseiről, megadjhatja Email címét amin értesítés kap erről.</p>
<div class="kozep">
<label for="email">Email:</label>
<input type="email" name="email" id="email">
<button onclick="insertUser(event)">Elküld</button>
</div>
<p class="msg"></p>
<script>
    function insertUser(e) {
        e.preventDefault();
        console.log("Küldés");
        let email=document.getElementById("email").value
        console.log(email)
        let formdata=new FormData();
        formdata.append("email",email);
        let config={
            method:"POST",
            body:formdata
        }
        insertData("../server/insertemail.php",config,rendermsg)
    }
    function rendermsg(data){
        console.log(data)
        document.querySelector(".msg").innerHTML=data.msg
    }
    
</script>