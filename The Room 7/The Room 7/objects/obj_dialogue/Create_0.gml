messages = ds_queue_create();
ds_queue_enqueue(messages, "Тук тук");
ds_queue_enqueue(messages, "Кто там?");
ds_queue_enqueue(messages, "Ремонт роботов");
ds_queue_enqueue(messages, "Входите");
current_message = "";