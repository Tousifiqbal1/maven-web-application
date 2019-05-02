node{
 
 properties([
    buildDiscarder(logRotator(numToKeepStr: '3')),
    pipelineTriggers([
        pollSCM('* * * * *')
    ])
])

 def mavenHome = tool name: 'Maven3.6.1', type: 'maven'
 
 stage('CheckoutCode') {
 git branch: 'master', credentialsId: '6486245e-c64c-4e1b-8aa5-c472bc7ad25f', url: 'https://github.com/Tousifiqbal1/maven-web-application.git'
 }  
  
  stage('Build') {
 
    sh "${mavenHome}/bin/mvn clean package"
  }

  stage('ExecuteSonarQubeReport') {
 
 sh "${mavenHome}/bin/mvn sonar:sonar"
 }     
  
  stage('UploadArtifactIntoNexus') {
 
 sh "${mavenHome}/bin/mvn deploy"
 } 
 
 stage('DeployAppIntoTomcat'){
 sh "cp $WORKSPACE/target/*.war /opt/tomcat/apache-tomcat-9.0.17/webapps/"
  } 
  
   
    
    
}
