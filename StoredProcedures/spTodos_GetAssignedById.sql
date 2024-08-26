CREATE PROCEDURE [dbo].[spTodos_GetAssignedById]
	@AssignedTo int,
	@TodoId int
as
begin
	select Id, Task, AssignedTo, IsComplete
	from dbo.Todos
	where AssignedTo = @AssignedTo 
		and Id = @TodoId;
end
