package controller;

public @interface WebServlet {

	String value();

	String[] urlpatterns();

	String name();

}
