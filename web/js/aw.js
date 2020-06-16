function aw() {
    console.log("1");
   // alert("asdas");
    var num = document.form.m.value;

    if (num == 3) {
        console.log("1111");
        document.action = "login_admin";
    } else if (num == 2) {
        console.log("3333");
        document.action = "login_Doctor";
    } else {
        console.log("2222");
        document.action = "login_patient";
    }
}