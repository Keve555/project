<style>
    img{
        width: 200px;
    }
</style>
<h1>Modell</h1>
<table>
    <thead>
        <tr>
            <th>Név</th>
            <th>Gyártás kezdete</th>
            <th>Gyártás vége</th>
            <th>&nbsp;</th>
        </tr>
    </thead>
    <tbody id="modell"></tbody>
</table>
<script src="getData.js"></script>
<script>
    let id=sessionStorage.getItem("id");
    console.log("süti",id);
    getData(`../server/modelltipusok.php?id=${id}`,render)
    function render(data){
        console.log(data)
        let str=""
        for(let obj of data){
        let ev=obj.gyartasvege==0?"Aktív":obj.gyartasvege
        str+=`
        <tr>
            <td>${obj.nev}</td>
            <td>${obj.gyartaskezd}</td>
            <td>${ev}</td>
            <td><img src="./img/${obj.kepurl}" alt=""></td>
        </tr>
        `
    }
        document.getElementById("modell").innerHTML=str
    }
</script>