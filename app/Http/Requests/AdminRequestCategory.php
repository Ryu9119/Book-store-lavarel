<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestCategory extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'c_name' => 'required|max:190|min:3|unique:categories,c_name,'.$this->id
        ];
    }

    public function messages()
    {
        return [
            'c_name.required'   => 'Data cannot be empty',
            'c_name.unique'     => 'Data already exists',
            'c_name.max'        => 'Data no more than 190 characters',
            'c_name.min'        => 'Data must be more than 3 characters'
        ];
    }
}
