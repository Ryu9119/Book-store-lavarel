<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestAccount extends FormRequest
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
        $rules = [
            'email'     => 'required|max:190|min:3|unique:admins,email,'.$this->id,
            'name'      => 'required',
            'phone'     => 'required|unique:admins,phone,'.$this->id,
        ];

        if (!$this->id) 
        {
            $rules['password'] = 'required';
        }

        return $rules;
    }

    public function messages()
    {
        return [
            'email.required'         => 'Data cannot be empty',
            'email.unique'           => 'Data already exists',
            'phone.unique'           => 'Data already exists',
            'phone.required'         => 'Data cannot be empty',
            'password.required'      => 'Data cannot be empty',
        ];
    }
}
