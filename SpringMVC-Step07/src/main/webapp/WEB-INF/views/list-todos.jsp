<%@ include file="component/header.jspf"%>
<%@ include file="component/navigation.jspf"%>

    <div class="container">
    <H1>Your Todos are</H1>
        <table class="table table-striped table-hover ">

            <thead>
                <tr>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Completed</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${todos}" var="todo">
                    <tr>
                        <td>${todo.desc}</td>
                        <td><fmt:formatDate pattern="MM/dd/yyyy" value="${todo.targetDate}" /></td>
                        <td>${todo.done}</td>
                        <td>
                            <a type="button" class="btn btn-primary" 
                                href="/update-todo?id=${todo.id}">Edit</a>

                            <a type="button" class="btn btn-danger" 
                                href="/delete-todo?id=${todo.id}">Delete</a>
                        </td>
                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a class="btn btn-info" href="/add-todo">Add a Todo</a>
    </div>
 
 
 
<%@ include file="component/footer.jspf"%>