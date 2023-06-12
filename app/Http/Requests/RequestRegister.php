<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RequestRegister extends FormRequest
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
            'email'     => 'required|max:190|min:3|unique:users,email,'.$this->id,
            'name'      => 'required',
            'phone'     => 'required|max:10|min:10|unique:users,phone,'.$this->id,
            'password'  => 'required',
//            'g-recaptcha-response' => 'required|captcha'
        ];
    }

    public function messages()
    {
        return [
            'name.required'         => 'Data cannot be empty',
            'email.required'         => 'Data cannot be empty',
            'email.unique'           => 'Data already exists',
            'phone.unique'           => 'Data already exists',
            'phone.required'         => 'Data cannot be empty',
            'phone.max'              => 'Phone number must have 10 characters',
            'phone.min'              => 'Phone number must have 10 characters',
            'password.required'      => 'Data cannot be empty',
        ];
    }
}
