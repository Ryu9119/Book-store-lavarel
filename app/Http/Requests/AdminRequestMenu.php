<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestMenu extends FormRequest
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
            'mn_name' => 'required|max:190|min:3|unique:menus,mn_name,'.$this->id
        ];
    }

    public function messages()
    {
        return [
            'mn_name.required'   => 'Data cannot be empty',
            'mn_name.unique'     => 'Data already exists',
            'mn_name.max'        => 'Data no more than 190 characters',
            'mn_name.min'        => 'Data must be more than 3 characters'
        ];
    }
}
