module Api
	module V1
		class ReportController < ApplicationController
			def percentage_of_infected
				total = Citzen.count
				mutation =  params[:mutation]		

				if mutation == nil
					qtd = qtd_infected
					message = "Infected counted"
				else
					if mutation == "dente_de_neon"
						qtd = qtd_neon_infected
					elsif mutation == "olho_na_nuca"
						qtd = qtd_eye_infected			
					else
						qtd = 0
						message = "Unkown mutation"
					end
				end

				percentage = ((qtd/total)*100).round.to_s + "%"

				render json: {status: 'SUCCESS',   message: message, qtd: qtd, total: total, 
										   percentage: percentage },status: :ok
			end

			def qtd_infected
				qtd = 0.0
				Citzen.find_each do |c|
				  if c.infected?
				  	qtd+=1
				  end
				 end
				return qtd
			end

			def qtd_neon_infected
				qtd = 0.0
				Citzen.find_each do |c|
				  if c.neon_infected?
				  	qtd+=1
				  end
				 end
				return qtd
			end

			def qtd_eye_infected
				qtd = 0.0
				Citzen.find_each do |c|
				  if c.eye_infected?
				  	qtd+=1
				  end
				 end
				return qtd
			end

		end
	end
end
