pipeline {

  agent{
      label{
	  
	     label "slave-11"  
	  }
  }
   
   stages {
   
         stage("create cont in slave-11"){
		 
				agent{
			
				label {label "slave-11"}
			}
			
			steps{
			 	   
				  sh "sudo mvn install"	
			          sh "sudo cp /mnt/node-1/workspace/test-pipeline-1/gameoflife-web/target/gameoflife.war /mnt/node-1/workspace/test-pipeline-1"
				  sh "sudo docker build -t tomcat:1.0 ."   
				
				 sh "sudo docker run -itdp 8081:8080 --name s1 tomcat:1.0 bash"
				
				}
	
		 }
   
   }
}  
