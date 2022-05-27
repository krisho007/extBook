
module.exports = function () {
    this.on("READ", "POScheduleLines", async (req) => {
        let srv = await cds.connect.to('API_PURCHASEORDER_PROCESS_SRV');
        let result = await srv.tx(req).send(
            {
                query: req.query,
                headers: {
                    apiKey: process.env.apiKey
                }
            }
        );
        return result;
    });
};

