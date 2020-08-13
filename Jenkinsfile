def repo="https://shailendra14k.github.io/sample-helm-chart/"
pipeline{
		agent{
				label 'helm'
		}
		stages{
				stage("Setup") {
            steps {
               
                    sh "helm repo add shailendra ${repo}"
              
            }
        }
				stage("Deploy to Dev") {
            steps {
                script{
										openshift.withCluster(){
                       
                            sh "helm upgrade --install my-guestbook shailendra/guestbook --values dev/values.yaml -n dev --wait"
                        
                    }
                }
            }
        }
				
				
		}

}
