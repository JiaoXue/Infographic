/**
 * Created by stevenyu on 2015/6/14.
 */
function writeObj(obj){
    var description = "";
    for(var i in obj){
        var property=obj[i];
        description+=i+" = "+property+"\n";
    }
    alert(description);
}
