    <div class="form-group">
    {!! Form::label('List Name') !!}
    {!! Form::text('name', null,
    array('required', 'class'=>'form-control', 'placeholder'=>'San Juan Vacation')) !!}
    @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
    @enderror
    </div>
    
    <div class="form-group">
    {!! Form::label('List Description') !!}
    {!! Form::textarea('description', null, array('required', 'class'=>'form-control',
    'placeholder'=>'Things to do before leaving for vacation')) !!}
    </div>
    @error('description')
    <div class="alert alert-danger">{{ $message }}</div>
    @enderror

    <div class="form-group">
        {!! Form::label('Done') !!}
        {!! Form::select('done', ['0' => 'False', '1' => 'True'], null, ['placeholder' => 'Select ...', 'class'=>'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('Categories') !!}
        {!! Form::select('categories[]', $categories, null,['multiple','class'=>'form-control'])!!}
    </div>


