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
end

