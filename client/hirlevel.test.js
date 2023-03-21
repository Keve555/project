const {test,except}=require('@jest/globals')
const ellenorzes=require("./hirlevel")

test("email should be the excepted length",()=>{
    let errArr=ellenorzes("asd")
    let errNumber=errArr.length
    except(errNumber).toBe(1)
})