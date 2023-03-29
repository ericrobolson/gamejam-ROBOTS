#include <stdint.h>
#include <stdlib.h>
#include "game.h"

int32_t bar_function(int32_t i)
{
    return i + 1;
}

typedef struct Game
{
    int32_t foo;
} Game;

void *game_new()
{
    Game *game = (Game *)malloc(sizeof(Game));
    game->foo = 0;
    return (void *)game;
}

int32_t increment(void *game)
{
    Game *g = (Game *)game;
    g->foo = g->foo + 1;
    return g->foo;
}