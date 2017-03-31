module.exports = (robot) ->

	robot.hear /ENR-[0-9]+/i, (res) ->
		robot.logger.info "Received message #{JSON.stringify(res)}"
		res.send "https://webgate.ec.europa.eu/eures-support/browse/#{res.message.text}"