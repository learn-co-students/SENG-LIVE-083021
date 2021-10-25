import React, { useState } from "react";
import EditIngredient from "./EditIngredient";

function Ingredient({ ingredient, deleteIngredient, onUpdateIngredient }) {
  const { id, name } = ingredient;
  const [isEditing, setIsEditing] = useState(false);

  const handleIngredientUpdate = (updatedIngredient) => {
    setIsEditing(false);
    onUpdateIngredient(updatedIngredient);
  };


  // Making a DELETE fetch request to delete a single ingredient
  const handleDelete = () => {
    deleteIngredient(id);
    fetch(`http://localhost:9292/ingredients/${id}`, {
      method: "DELETE",
    });
  };

  return (
    <div>
      {isEditing ? (
        <EditIngredient
          ingredient={ingredient}
          onUpdateIngredient={handleIngredientUpdate}
        />
      ) : (
        <li style={{ listStyleType: "none" }}>
          <p>
            - {name}
            <button onClick={() => setIsEditing((isEditing) => !isEditing)}>
              Edit
            </button>
            <button onClick={handleDelete}>Delete</button>
          </p>
        </li>
      )}
    </div>
  );
}

export default Ingredient;



// deleted_items class
// everytime an item gets deleted, i create a new deleted_items object with the info
// if user clicks undo delete, retreive the deleted item, and create a new item with it
