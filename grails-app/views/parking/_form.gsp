<%@ page import="model.Parking" %>



<div class="form-group ${hasErrors(bean: parkingInstance, field: 'cars', 'error')} ">
	<label class="control-label col-sm-3" for="cars">
		<g:message code="parking.cars.label" default="Cars" />
		
	</label>
	<div class="col-sm-9">
		
<ul class="one-to-many">
<g:each in="${parkingInstance?.cars?}" var="c">
    <li><g:link controller="car" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="car" action="create" params="['parking.id': parkingInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'car.label', default: 'Car')])}</g:link>
</li>
</ul>


	</div>
</div>

<div class="form-group ${hasErrors(bean: parkingInstance, field: 'description', 'error')} required">
	<label class="control-label col-sm-3" for="description">
		<g:message code="parking.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="description" required="" value="${parkingInstance?.description}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: parkingInstance, field: 'name', 'error')} required">
	<label class="control-label col-sm-3" for="name">
		<g:message code="parking.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="name" required="" value="${parkingInstance?.name}"/>

	</div>
</div>

