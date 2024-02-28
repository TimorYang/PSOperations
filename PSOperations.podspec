Pod::Spec.new do |s|

	s.name         	= "PSOperations"
	s.version      	= "5.0.11"
	s.swift_version = "5.9"
	s.summary      	= "This is an adaptation of the sample code provided in the Advanced NSOperations session of WWDC 2015"
	s.description  	= <<-DESC
	PSOperations is a framework that leverages the power of NSOperation and NSOperationQueue. It enables you to use operations more easily in all parts of your project.


	This is an adaptation of the sample code provided in the [Advanced NSOperations session of WWDC 2015](https://developer.apple.com/videos/wwdc/2015/?id=226).
	DESC

	s.homepage	= "https://github.com/TimorYang/PSOperations"
	s.license	= { :type => 'Apache 2.0' }
	s.author	= "Matt McMurry", "Mark Schultz"

	s.ios.deployment_target = '12'

	s.requires_arc = true

	s.source = {  git: "git@github.com:TimorYang/PSOperations.git",  tag: s.version.to_s  }
	
	s.source_files = "PSOperations/*.swift"

  	s.subspec "Core" do |sb|
  		sb.source_files = "PSOperations/*.swift"
  	end
  
  	s.subspec "Health" do |sb|
	  	sb.dependency 'PSOperations/Core'
  		sb.source_files = "PSOperationsHealth/*.swift"
  	end
  
  	s.subspec "Passbook" do |sb|
	  	sb.dependency 'PSOperations/Core'
  		sb.source_files = "PSOperationsPassbook/*.swift"
  	end

  	s.subspec "Calendar" do |sb|
	  	sb.dependency 'PSOperations/Core'
  		sb.source_files = "PSOperationsCalendar/*.swift"
  	end
  
  	s.subspec "Location" do |sb|
	  	sb.dependency 'PSOperations/Core'
  		sb.source_files = "PSOperationsLocation/*.swift"
  	end

end
