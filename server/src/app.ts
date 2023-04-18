import express, { Request, Response } from "express";
import { expensesService } from "./services/expenses-service";

const app = express();
const port = 3000;

const API_NAME = "api";

app.get(`/${API_NAME}/expenses`, async (req: Request, res: Response) => {
	try {
		const expenses = await expensesService.getExpenses();
		res.status(200).json(expenses);
	} catch (error) {
		res.sendStatus(500);
	}
});

app.listen(port, () => {
	console.log(`Example app listening on port ${port}`);
});
