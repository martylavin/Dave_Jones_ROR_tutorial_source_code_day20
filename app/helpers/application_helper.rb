module ApplicationHelper
	def calendar(month, year)
		prev_month = link_to "previous", page_calendar_path(:month =>month.to_i - 1)
		cal_string = "<table border = '1'>"
		cal_string += "<tr><td>#{prev_month}</td><td colspan=7>October</td></tr>"
		cal_string += "<tr>"
		cal_string += "<td>&nbsp;</td>"

		6.times do | day |
			cal_string += "<td> #{day+1}</td>"
		end

		cal_string += "</tr>"
		cal_string += "</table>"
		return cal_string.html_safe
	end
#______________________________________________________________

	def things_to_do(links)
		# key = url, value = body
		html = "<ul>"
		links.each do |url, body|
			html += "<li>" + link_to( body, url) + "</li>"
		end 

		html += "</ul>"
		return html.html_safe		
	end

def show_params
	#html = '<div style = 'border: 2px red solid'>' 
	#html += '<heading>Params<heading/>'
	html += params.each do |key, value|
	html += "#{key}: #{value} <BR />"	
	end
	#html += '</div>'
	return html.html_safe
end

def puts_test
		html1 = "<h1>Ask a supid marty 333question</h1>"
		"jjjjjj"
		return html1.html_safe
	end

	
end

