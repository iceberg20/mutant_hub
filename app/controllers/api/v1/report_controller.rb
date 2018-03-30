module Api
	module V1
		class ReportController < ApplicationController
			def percentage_of_infected
				total = Citzen.count

				cont = 0.0;
				Citzen.find_each do |c|
				  if c.infected?
				  	cont+=1
				  end
				end

				percentage = ((cont/total)*100).round.to_s + "%"

				render json: {status: 'SUCCESS',   message:'Infected counted', 
					infected_citzens:percentage},status: :ok
			end
		end
	end
end