# frozen_string_literal: true

require 'util/trackable_error_class'

module Authentication
  module AuthnJenkins
	InvalidJenkinsCred = ::Util::TrackableErrorClass.new(
		msg: "'Invalid Jenkins Cred: {0}",
		code: "CONJ00045E"
	)

	HostNotFound=::Util::TrackableErrorClass.new(
		msg: "Host '{0}' wasn't found'",
		code: "CONJ00046E"
	)

	RunningJobNotFound=::Util::TrackableErrorClass.new(
		msg: "Job '{0}' is not running and cannot be authenticated",
		code: "CONJ00047E"
	)
	
	InvalidSignature=::Util::TrackableErrorClass.new(
		msg: "Invalid signature provided by jenkins. Data tampered or private-public key mismatch",
		code: "CONJ00048E"
	)

	BuildInfoError=::Util::TrackableErrorClass.new(
		msg: "Failed to retrieve build info from. Recieved {0}",
		code: "CONJ00049E"
	)

	InvalidURL=::Util::TrackableErrorClass.new(
		msg: "Invalid URL '{0}' http is not allowed unless the webservice annotation 'allow-http' is set to 'true'",
		code: "CONJ00050E"
	)
   end
end