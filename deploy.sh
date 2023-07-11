#!/bin/bash
  
  sh '''
      docker pull public.ecr.aws/s9e0w9o5/demojenkins:latest 
      docker run -itd --network=host public.ecr.aws/s9e0w9o5/demojenkins:latest       
      '''
