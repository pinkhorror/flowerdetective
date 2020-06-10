const { div, h1, ul, li, input, button }
	= Moon.view.m;

const flowerGenes = {
Cosmo: [],
Hyacinth: [],
Lily: [],
Pansy: [],
Mum: [],
Rose: [],
Tulip: [],
Windflower: []
};

const updateTodo = ({ data, view }) => {
	const dataNew = {
		...data,
		todo: view.target.value
	};

	return {
		data: dataNew,
		view: <viewTodos data=dataNew/>
	};
};

const createTodo = ({ data }) => {
	const dataNew = {
		todo: "",
		todos: [...data.todos, data.todo]
	};

	return {
		data: dataNew,
		view: <viewTodos data=dataNew/>
	};
};

const removeTodo = index => ({ data }) => {
	const dataNew = {
		...data,
		todos: data.todos.filter(
			(todo, todoIndex) =>
				todoIndex !== index
		)
	};

	return {
		data: dataNew,
		view: <viewTodos data=dataNew/>
	};
};

const viewTodos = ({ data }) => (
	<div>
		<h1>Todos</h1>
		<input
			type="text"
			placeholder="What needs to be done?"
			value=data.todo
			@input=updateTodo
		/>
		<button @click=createTodo>Create</button>
		<ul children=(data.todos.map((todo, index) =>
			<li @click=(removeTodo(index))>
				{todo}
			</li>
		))/>
	</div>
);

Moon.use({
	data: Moon.data.driver,
	view: Moon.view.driver("#root")
});

Moon.run(() => {
	const data = {
		todo: "",
		todos: Object.keys(flowerGenes)
	};

	return {
		data,
		view: <viewTodos data=data/>
	};
});
