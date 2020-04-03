module EventsHelper
	def calculate_fees event
		(event.fees * (5/100.0)).to_d(2)
	end
end
