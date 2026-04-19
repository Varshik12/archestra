ALTER TABLE "interactions" ADD COLUMN "virtual_api_key_id" uuid;--> statement-breakpoint
ALTER TABLE "interactions" ADD CONSTRAINT "interactions_virtual_api_key_id_virtual_api_keys_id_fk" FOREIGN KEY ("virtual_api_key_id") REFERENCES "public"."virtual_api_keys"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "interactions_virtual_api_key_id_idx" ON "interactions" USING btree ("virtual_api_key_id");--> statement-breakpoint
