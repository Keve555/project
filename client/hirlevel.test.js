const {test,expect}=require('@jest/globals')
const ellenorzes=require("./hirlevel")

test("email should be the excepted length",()=>{
    let errArr=ellenorzes("asd")
    let errNumber=errArr.length
    expect(errNumber).toBe(2)
})

test("email should be correct",()=>{
    let errArr=ellenorzes("asdgtjvfzdh")
    let errNumber=errArr.length
    expect(errNumber).toBe(1)
})