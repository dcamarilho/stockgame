const active = ()=>{
  const act_1 = document.getElementById("active-1");
  const act_2 = document.getElementById("active-2");
  const act_3 = document.getElementById("active-3");

  act_1.addEventListener('click', (event)=>{
    act_1.classList.add("active");
    act_2.classList.remove("active");
    act_3.classList.remove("active");
  });

  act_2.addEventListener('click', (event)=>{
    act_1.classList.remove("active");
    act_2.classList.add("active");
    act_3.classList.remove("active");
  });

  act_3.addEventListener('click', (event)=>{
    act_1.classList.remove("active");
    act_2.classList.remove("active");
    act_3.classList.add("active");
  });

};

export {active}
