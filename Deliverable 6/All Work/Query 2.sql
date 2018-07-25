SELECT        Registration.EventID, AVG(Evaluation.Recommend) AS Recommend, AVG(Evaluation.Useful) AS Useful, AVG(Evaluation.Relative) AS Relative
FROM            Event INNER JOIN
                         Registration ON Event.EventID = Registration.EventID INNER JOIN
                         Evaluation ON Registration.EvalID = Evaluation.EvalID
GROUP BY Registration.EventID
