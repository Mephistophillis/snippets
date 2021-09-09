import {useState} from 'react';

export const useForm = (initialValues) => {
  const [form, setForm] = useState(initialValues);
  const updateForm = (values) => {
    setForm((state) => {
      return {
        ...state,
        ...values,
      };
    });
  };

  const clearForm = () => setForm(initialValues);

  const handleInputChange = (object) => {
    if (object.persist) {
      object.persist();
    }
    const element = object.target ? object.target : object;

    setForm((state) => ({
      ...state,
      [element.name]:
        element.type === 'checkbox' ? element.checked : element.value,
    }));
  };

  const handleChangeSelect = (selectedOption, object) => {
    const element = object.target ? object.target : object;
    setForm((state) => ({
      ...state,
      [element.name]: selectedOption,
    }));
  };

  return {
    form,
    setForm,
    updateForm,
    handleInputChange,
    handleChangeSelect,
    clearForm,
  };
};
