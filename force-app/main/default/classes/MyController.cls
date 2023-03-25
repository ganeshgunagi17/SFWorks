global class MyController {

    @RemoteAction
    global static String SayHello(String hello){
        return 'hello Ganesh from remote action';
    }
}