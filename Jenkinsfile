node {
def app
    stage('SCM Checkout'){
        git credentialsId: 'cd1d0e32-56a1-4a7a-a59f-9ab0b78775fc', url: 'https://github.com/bhanu1923/new.git'   
    }
    stage('Mvn Package'){
          def mvnHome = tool name: 'maven', type: 'maven'
          def mvnCMD = "${mvnHome}/bin/mvn"
          sh "${mvnCMD} clean package" 
    }
    stage('Build Docker Image'){
    app = docker.build("6473233877/newpipeline")
    }
     stage('Test Image'){
            echo "Test Passed"
     }
     stage('Push docker image'){
     docker.withRegistry('https://registry.hub.docker.com','Docker')
        {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
     }
}
