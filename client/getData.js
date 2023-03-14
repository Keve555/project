async function getData(url,render){
    const response=await fetch(url)
    const data=await response.json()
    render(data)
}
async function insertData(url,config,render){
    const response=await fetch(url,config)
    const data=await response.json()
    render(data)
}