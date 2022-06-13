import pygame
import math
class moveable{
	def __init__(self, x, y, img){
		self.img = pygame.image.load(img)
		self.hitbox = self.img.get_rect(topleft = (x, y))
	}
}
class shot(moveable){
	def __init__(self, x, y, img, speed, display){
		super().__init__(x, y, img)
		self.speed = speed
		while self.hitbox.x < 800{
			self.update()
			self.draw(display)
		}
		del self
	}
	def update(self){
		self.hitbox.x += self.speed
	}
	def draw(self, display){
		display.blit(self.img, self.hitbox)
	}
}
class user(moveable){
	def __init__(self, x, y, img, speed){
		super().__init__(x, y, img)
		self.speed = speed
	}
	def update(self, keys){
		if keys[pygame.K_w]{
			self.hitbox.y -= self.speed
		}elif keys[pygame.K_s]{
			self.hitbox.y += self.speed
		}
	}
	def draw(self, display){
		display.blit(self.img, self.hitbox)
	}
}
class enemies(moveable){
	def __init__(self, x, y, img, speed, display){
		super().__init__(x, y, img)
		self.speed = speed
		while self != None{
			self.update()
			self.draw(display)
		}
	}
	def update(self){
		self.hitbox.x -= self.speed
	}
	def draw(self, display){
		display.blit(self.img, self.hitbox)
	}
}
def update(){
	pass
}
def main(){
	screen = pygame.display.set_mode((800, 600))
	running = True
	player = user(0, 0, "assets/player/player.png", 2)
	bullet = shot(player.hitbox.x + 50, player.hitbox.y + 50, "assets/bullet/energy.png", player.speed / 2, screen)
	pygame.display.set_caption("Move n' Shootn'")
	while running{
		pygame.display.update()
		for event in pygame.event.get(){
			if event.type == pygame.QUIT{
				running = False
			}
		}
		update()
		keys = pygame.key.get_pressed()
		screen.fill((0, 0, 0))
		player.update(pygame.key.get_pressed())
		player.draw(screen)
		if keys[pygame.K_SPACE]{
			bullet = shot(player.hitbox.x + 50, player.hitbox.y + 50, "assets/bullet/energy.png", player.speed / 2, screen)
		}
		enemy = enemies(700, math.randint(0, 800), "assets/enemies/zombie.png", player.speed / 2, display)
	}
}