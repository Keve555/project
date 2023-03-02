<h1>Modellek</h1>
<table class="table table-striped text-center">
    <thead class="thead thead-dark">
        <tr>
            <th>Modell</th>
            <th>Kategória</th>
            <th>&nbsp;</th>
        </tr>
    </thead>
    <tbody id="modell" class="tbody"></tbody>
</table>
<script src="getData.js"></script>
<script>
    getData("../server/modellek.php",render)
    function render(data){
        console.log(data)
        let str=""
        for(let obj of data)
        str+=`
        <tr>
            <td>${obj.nev}</td>
            <td>${obj.kategoria}</td>
            <td id="${obj.id}" onclick="show(this)" class="custom-button">Részletek</td>
        </tr>
        `
        document.getElementById("modell").innerHTML=str
    }
    function show(obj){
        console.log(obj.id)
        sessionStorage.setItem("id", obj.id)
        location.href="./index.php?prog=modelltipusok.php&id=obj.id"
    }

</script>