<h3>Opel mellett szintén elterjedt autómárkák Magyarországon</h3>
<table class="table table-striped tableFixHead">
    <thead class="thead thead-dark">
        <tr>
            <th>Név</th>
            <th>Ország</th>
            <th>Székhely</th>
            <th>Alapítási év</th>
        </tr>
    </thead>
    <tbody id="lista" class="tbody"></tbody>
</table>
<script src="getData.js"></script>
<script>
    getData("../server/lista.php",render)
    function render(data){
        console.log(data)
        let str=""
        for(let obj of data)
        str+=`
        <tr>
            <td>${obj.nev}</td>
            <td>${obj.orszag}</td>
            <td>${obj.szekhely}</td>
            <td>${obj.alapitasiev}</td>
        </tr>
        `
        document.getElementById("lista").innerHTML=str
    }
</script>