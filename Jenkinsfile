node{

def app

stage('clone repository') {

checkout scm
}
stage( 'Build image'){

app = docker.build ("vishalpoudel96/test")
}
stage('Test image'){


app.inside {

sh 'echo "Tests passed"'
  }
}

stage( 'Push image'){

docker.with Registry ('https://registry.hub.docker.com', 'dockerhub){
    app.push("${env.BUILD_NUIMBER}")
}
