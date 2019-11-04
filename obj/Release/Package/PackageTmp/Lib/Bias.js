function SimpleCheckForBias(TextToTest) {
    for (var z = 0; z < BiasWordArray.length; z++) {
        if (TextToTest.indexOf(BiasWordArray[z].toLowerCase()) > -1) {
            return "true";
        }
    }
    return "false";
}

function TheseBias() {
    return "actress,authoress,chairman,female astronaut,forefathers,foreman,mailman,male nurse,man,mankind ,manmade,policeman,policewoman,veterans,black,nigger,indian,american indian,oriental,little old lady,these people,cult,fundamentalist,disabiltiy,retarded,teenager,gay,fanatical,dike,bitch".split(',');
}
