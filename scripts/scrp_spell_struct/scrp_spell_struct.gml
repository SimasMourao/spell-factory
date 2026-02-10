


function spell(_id, _name, _element, _type, _modal, _charge, _range) constructor{
	
	my_id		=	_id;
	name		=	_name;
	element		=	_element;
	type		=	_type;
	modal		=	_modal;
	charge		=	clamp(_charge, 1, 30);
	range		=	clamp(_range, 5, 600);

	calculate()
	
	function calculate()
	{
		cost = calculate_cost(range, charge);
		cooldown = calculate_cooldown(cost);	
	}
}