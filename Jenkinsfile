def repo="http://httpd-httpd.apps.shsingh.3ca3.sandbox88.opentlc.com"
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
                       
                            sh "helm upgrade --install sample-httpd shailendra/sample-app --values dev/values.yaml -n dev --wait"
                        
                    }
                }
            }
        }
				
				
		}

}
