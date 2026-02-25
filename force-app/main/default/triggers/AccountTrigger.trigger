trigger AccountTrigger on Account (before insert,after update) {
		AccountController.createContact(trigger.new);
}