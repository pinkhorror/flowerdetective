const { div, h1, ul, li, input, button }
	= Moon.view.m;

const Black = 'Black';
const Blue = 'Blue';
const Green = 'Green';
const Orange = 'Orange';
const Pink = 'Pink';
const Purple = 'Purple';
const Red = 'Red';
const White = 'White';
const Yellow = 'Yellow';

const flowersRaw = '
Rose	0	0	0	0	White	0
Rose	0	0	0	1	White	0
Rose	0	0	0	2	White	0
Rose	0	0	1	0	White	1
Rose	0	0	1	1	White	0
Rose	0	0	1	2	White	0
Rose	0	0	2	0	Purple	0
Rose	0	0	2	1	Purple	0
Rose	0	0	2	2	Purple	0
Rose	0	1	0	0	Yellow	0
Rose	0	1	0	1	Yellow	0
Rose	0	1	0	2	Yellow	0
Rose	0	1	1	0	White	0
Rose	0	1	1	1	White	0
Rose	0	1	1	2	White	0
Rose	0	1	2	0	Purple	0
Rose	0	1	2	1	Purple	0
Rose	0	1	2	2	Purple	0
Rose	0	2	0	0	Yellow	1
Rose	0	2	0	1	Yellow	0
Rose	0	2	0	2	Yellow	0
Rose	0	2	1	0	Yellow	0
Rose	0	2	1	1	Yellow	0
Rose	0	2	1	2	Yellow	0
Rose	0	2	2	0	White	0
Rose	0	2	2	1	White	0
Rose	0	2	2	2	White	0
Rose	1	0	0	0	Red	0
Rose	1	0	0	1	Pink	0
Rose	1	0	0	2	White	0
Rose	1	0	1	0	Red	0
Rose	1	0	1	1	Pink	0
Rose	1	0	1	2	White	0
Rose	1	0	2	0	Red	0
Rose	1	0	2	1	Pink	0
Rose	1	0	2	2	Purple	0
Rose	1	1	0	0	Orange	0
Rose	1	1	0	1	Yellow	0
Rose	1	1	0	2	Yellow	0
Rose	1	1	1	0	Red	0
Rose	1	1	1	1	Pink	0
Rose	1	1	1	2	White	0
Rose	1	1	2	0	Red	0
Rose	1	1	2	1	Pink	0
Rose	1	1	2	2	Purple	0
Rose	1	2	0	0	Orange	0
Rose	1	2	0	1	Yellow	0
Rose	1	2	0	2	Yellow	0
Rose	1	2	1	0	Orange	0
Rose	1	2	1	1	Yellow	0
Rose	1	2	1	2	Yellow	0
Rose	1	2	2	0	Red	0
Rose	1	2	2	1	Pink	0
Rose	1	2	2	2	White	0
Rose	2	0	0	0	Black	0
Rose	2	0	0	1	Red	1
Rose	2	0	0	2	Pink	0
Rose	2	0	1	0	Black	0
Rose	2	0	1	1	Red	0
Rose	2	0	1	2	Pink	0
Rose	2	0	2	0	Black	0
Rose	2	0	2	1	Red	0
Rose	2	0	2	2	Pink	0
Rose	2	1	0	0	Orange	0
Rose	2	1	0	1	Orange	0
Rose	2	1	0	2	Yellow	0
Rose	2	1	1	0	Red	0
Rose	2	1	1	1	Red	0
Rose	2	1	1	2	White	0
Rose	2	1	2	0	Black	0
Rose	2	1	2	1	Red	0
Rose	2	1	2	2	Purple	0
Rose	2	2	0	0	Orange	0
Rose	2	2	0	1	Orange	0
Rose	2	2	0	2	Yellow	0
Rose	2	2	1	0	Orange	0
Rose	2	2	1	1	Orange	0
Rose	2	2	1	2	Yellow	0
Rose	2	2	2	0	Blue	0
Rose	2	2	2	1	Red	0
Rose	2	2	2	2	White	0
Tulip	0	0	0	0	White	0
Tulip	0	0	1	0	White	1
Tulip	0	0	2	0	White	0
Tulip	0	1	0	0	Yellow	0
Tulip	0	1	1	0	Yellow	0
Tulip	0	1	2	0	White	0
Tulip	0	2	0	0	Yellow	1
Tulip	0	2	1	0	Yellow	0
Tulip	0	2	2	0	Yellow	0
Tulip	1	0	0	0	Red	0
Tulip	1	0	1	0	Pink	0
Tulip	1	0	2	0	White	0
Tulip	1	1	0	0	Orange	0
Tulip	1	1	1	0	Yellow	0
Tulip	1	1	2	0	Yellow	0
Tulip	1	2	0	0	Orange	0
Tulip	1	2	1	0	Yellow	0
Tulip	1	2	2	0	Yellow	0
Tulip	2	0	0	0	Black	0
Tulip	2	0	1	0	Red	1
Tulip	2	0	2	0	Red	0
Tulip	2	1	0	0	Black	0
Tulip	2	1	1	0	Red	0
Tulip	2	1	2	0	Red	0
Tulip	2	2	0	0	Purple	0
Tulip	2	2	1	0	Purple	0
Tulip	2	2	2	0	Purple	0
Pansy	0	0	0	0	White	0
Pansy	0	0	1	0	White	1
Pansy	0	0	2	0	Blue	0
Pansy	0	1	0	0	Yellow	0
Pansy	0	1	1	0	Yellow	0
Pansy	0	1	2	0	Blue	0
Pansy	0	2	0	0	Yellow	1
Pansy	0	2	1	0	Yellow	0
Pansy	0	2	2	0	Yellow	0
Pansy	1	0	0	0	Red	0
Pansy	1	0	1	0	Red	0
Pansy	1	0	2	0	Blue	0
Pansy	1	1	0	0	Orange	0
Pansy	1	1	1	0	Orange	0
Pansy	1	1	2	0	Orange	0
Pansy	1	2	0	0	Yellow	0
Pansy	1	2	1	0	Yellow	0
Pansy	1	2	2	0	Yellow	0
Pansy	2	0	0	0	Red	1
Pansy	2	0	1	0	Red	0
Pansy	2	0	2	0	Purple	0
Pansy	2	1	0	0	Red	0
Pansy	2	1	1	0	Red	0
Pansy	2	1	2	0	Purple	0
Pansy	2	2	0	0	Orange	0
Pansy	2	2	1	0	Orange	0
Pansy	2	2	2	0	Purple	0
Cosmos	0	0	0	0	White	0
Cosmos	0	0	1	0	White	1
Cosmos	0	0	2	0	White	0
Cosmos	0	1	0	0	Yellow	0
Cosmos	0	1	1	0	Yellow	0
Cosmos	0	1	2	0	White	0
Cosmos	0	2	0	0	Yellow	0
Cosmos	0	2	1	0	Yellow	1
Cosmos	0	2	2	0	Yellow	0
Cosmos	1	0	0	0	Pink	0
Cosmos	1	0	1	0	Pink	0
Cosmos	1	0	2	0	Pink	0
Cosmos	1	1	0	0	Orange	0
Cosmos	1	1	1	0	Orange	0
Cosmos	1	1	2	0	Pink	0
Cosmos	1	2	0	0	Orange	0
Cosmos	1	2	1	0	Orange	0
Cosmos	1	2	2	0	Orange	0
Cosmos	2	0	0	0	Red	1
Cosmos	2	0	1	0	Red	0
Cosmos	2	0	2	0	Red	0
Cosmos	2	1	0	0	Orange	0
Cosmos	2	1	1	0	Orange	0
Cosmos	2	1	2	0	Red	0
Cosmos	2	2	0	0	Black	0
Cosmos	2	2	1	0	Black	0
Cosmos	2	2	2	0	Red	0
Lily	0	0	0	0	White	0
Lily	0	0	1	0	White	0
Lily	0	0	2	0	White	1
Lily	0	1	0	0	Yellow	0
Lily	0	1	1	0	White	0
Lily	0	1	2	0	White	0
Lily	0	2	0	0	Yellow	1
Lily	0	2	1	0	Yellow	0
Lily	0	2	2	0	White	0
Lily	1	0	0	0	Red	0
Lily	1	0	1	0	Pink	0
Lily	1	0	2	0	White	0
Lily	1	1	0	0	Orange	0
Lily	1	1	1	0	Yellow	0
Lily	1	1	2	0	Yellow	0
Lily	1	2	0	0	Orange	0
Lily	1	2	1	0	Yellow	0
Lily	1	2	2	0	Yellow	0
Lily	2	0	0	0	Black	0
Lily	2	0	1	0	Red	1
Lily	2	0	2	0	Pink	0
Lily	2	1	0	0	Black	0
Lily	2	1	1	0	Red	0
Lily	2	1	2	0	Pink	0
Lily	2	2	0	0	Orange	0
Lily	2	2	1	0	Orange	0
Lily	2	2	2	0	White	0
Hyacinth	0	0	0	0	White	0
Hyacinth	0	0	1	0	White	1
Hyacinth	0	0	2	0	Blue	0
Hyacinth	0	1	0	0	Yellow	0
Hyacinth	0	1	1	0	Yellow	0
Hyacinth	0	1	2	0	White	0
Hyacinth	0	2	0	0	Yellow	1
Hyacinth	0	2	1	0	Yellow	0
Hyacinth	0	2	2	0	Yellow	0
Hyacinth	1	0	0	0	Red	0
Hyacinth	1	0	1	0	Pink	0
Hyacinth	1	0	2	0	White	0
Hyacinth	1	1	0	0	Orange	0
Hyacinth	1	1	1	0	Yellow	0
Hyacinth	1	1	2	0	Yellow	0
Hyacinth	1	2	0	0	Orange	0
Hyacinth	1	2	1	0	Yellow	0
Hyacinth	1	2	2	0	Yellow	0
Hyacinth	2	0	0	0	Red	0
Hyacinth	2	0	1	0	Red	1
Hyacinth	2	0	2	0	Red	0
Hyacinth	2	1	0	0	Blue	0
Hyacinth	2	1	1	0	Red	0
Hyacinth	2	1	2	0	Red	0
Hyacinth	2	2	0	0	Purple	0
Hyacinth	2	2	1	0	Purple	0
Hyacinth	2	2	2	0	Purple	0
Windflower	0	0	0	0	White	0
Windflower	0	0	1	0	White	1
Windflower	0	0	2	0	Blue	0
Windflower	0	1	0	0	Orange	0
Windflower	0	1	1	0	Orange	0
Windflower	0	1	2	0	Blue	0
Windflower	0	2	0	0	Orange	1
Windflower	0	2	1	0	Orange	0
Windflower	0	2	2	0	Orange	0
Windflower	1	0	0	0	Red	0
Windflower	1	0	1	0	Red	0
Windflower	1	0	2	0	Blue	0
Windflower	1	1	0	0	Pink	0
Windflower	1	1	1	0	Pink	0
Windflower	1	1	2	0	Pink	0
Windflower	1	2	0	0	Orange	0
Windflower	1	2	1	0	Orange	0
Windflower	1	2	2	0	Orange	0
Windflower	2	0	0	0	Red	1
Windflower	2	0	1	0	Red	0
Windflower	2	0	2	0	Purple	0
Windflower	2	1	0	0	Red	0
Windflower	2	1	1	0	Red	0
Windflower	2	1	2	0	Purple	0
Windflower	2	2	0	0	Pink	0
Windflower	2	2	1	0	Pink	0
Windflower	2	2	2	0	Purple	0
Mum	0	0	0	0	White	0
Mum	0	0	1	0	White	1
Mum	0	0	2	0	Purple	0
Mum	0	1	0	0	Yellow	0
Mum	0	1	1	0	Yellow	0
Mum	0	1	2	0	White	0
Mum	0	2	0	0	Yellow	1
Mum	0	2	1	0	Yellow	0
Mum	0	2	2	0	Yellow	0
Mum	1	0	0	0	Pink	0
Mum	1	0	1	0	Pink	0
Mum	1	0	2	0	Pink	0
Mum	1	1	0	0	Yellow	0
Mum	1	1	1	0	Red	0
Mum	1	1	2	0	Pink	0
Mum	1	2	0	0	Purple	0
Mum	1	2	1	0	Purple	0
Mum	1	2	2	0	Purple	0
Mum	2	0	0	0	Red	1
Mum	2	0	1	0	Red	0
Mum	2	0	2	0	Red	0
Mum	2	1	0	0	Purple	0
Mum	2	1	1	0	Purple	0
Mum	2	1	2	0	Red	0
Mum	2	2	0	0	Green	0
Mum	2	2	1	0	Green	0
Mum	2	2	2	0	Red	0
';

/*
function flowerBuilder(result, fields) {
	const type = fields[0];
	if (!(type in result)) {
		result[type] = [];
	}
	result[type].push(fields.slice(1));
	
	return result;
};
*/

const flowers = flowersRaw.split('\n')
	.map(line => line.trim())
	.filter(line => line.length > 0);
	/*
	.sort()
	.map(line => line.split('\t'))
	.reduce(flowerBuilder, {});
	*/

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
			<li>{todo}</li>
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
		todos: Object.keys(flowers)
	};

	return {
		data,
		view: <viewTodos data=data/>
	};
});
