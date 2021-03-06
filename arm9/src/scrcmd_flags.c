#include "scrcmd.h"
#include "event_data.h"
#include "pokedex.h"

extern void* FUN_02034E20(void*);
extern void* FUN_02034E30(void*);
extern BOOL FUN_02055474(void*);
extern void FUN_02055488(void*, u32);
extern void FUN_0205ECD4(struct ScriptState* state);
extern BOOL FUN_0205ECE0(struct ScriptState* state);
extern void FUN_0205ECFC(struct ScriptState* state);
extern BOOL FUN_0205ED0C(struct ScriptState* state);
extern void FUN_0205ED1C(struct ScriptState* state);
extern void FUN_0205ED2C(struct ScriptState* state);
extern BOOL FUN_0205ED3C(struct ScriptState* state);
extern void FUN_0205ED4C(struct ScriptState* state);
extern void FUN_0205ED5C(struct ScriptState* state);
extern BOOL FUN_0205ED6C(struct ScriptState* state);
extern BOOL FUN_0205F264(struct ScriptState* state, u32);
extern void FUN_0205F274(struct ScriptState* state);
extern void FUN_0205F284(struct ScriptState* state);
extern BOOL FUN_0205F294(struct ScriptState* state);
extern void FUN_0205F2A4(struct ScriptState* state);
extern void FUN_0205F2B4(struct ScriptState* state);
extern BOOL FUN_0205F2C4(struct ScriptState* state);

const u8 UNK_020F457F[8] = {
    0, 1, 2, 3, 4, 5, 6, 7,
};

THUMB_FUNC BOOL ScrCmd_HasSinnohDex(struct ScriptContext* ctx)
{
    struct Pokedex* pokedex = Sav2_Pokedex_get(ctx->unk80->saveBlock2);
    u16* ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));

    *ret_ptr = (u16)Pokedex_GetSinnohDexFlag(pokedex);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GiveSinnohDex(struct ScriptContext* ctx)
{
    struct Pokedex* pokedex = Sav2_Pokedex_get(ctx->unk80->saveBlock2);

    Pokedex_SetSinnohDexFlag(pokedex);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_HasRunningShoes(struct ScriptContext* ctx)
{
    u16* ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
    void* unk_sav_ptr = FUN_02034E30(ctx->unk80->saveBlock2);
    void* unk = FUN_02034E20(unk_sav_ptr);

    *ret_ptr = (u16)FUN_02055474(unk);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GiveRunningShoes(struct ScriptContext* ctx)
{
    void* unk_sav_ptr = FUN_02034E30(ctx->unk80->saveBlock2);
    void* unk = FUN_02034E20(unk_sav_ptr);

    FUN_02055488(unk, 1);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_HasBadge(struct ScriptContext* ctx)
{
    u16 badge_no = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u16* ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
    GF_ASSERT(badge_no < 8);
    struct PlayerData* player = Sav2_PlayerData_GetProfileAddr(ctx->unk80->saveBlock2);

    *ret_ptr = (u16)PlayerProfile_TestBadgeFlag(player, badge_no);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GiveBadge(struct ScriptContext* ctx)
{
    u16 badge_no = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    GF_ASSERT(badge_no < 8);
    struct PlayerData* player = Sav2_PlayerData_GetProfileAddr(ctx->unk80->saveBlock2);

    PlayerProfile_SetBadgeFlag(player, badge_no);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GiveBag(struct ScriptContext* ctx)
{
    u16* ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    *ret_ptr = (u16)FUN_0205ECE0(state);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetTotalEarnedBadges(struct ScriptContext* ctx)
{
    u16* ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));

    u16 i;
    u16 badges;
    for (i = 0, badges = 0; i < 8; i++)
    {
        struct PlayerData* player = Sav2_PlayerData_GetProfileAddr(ctx->unk80->saveBlock2);
        BOOL has_badge = PlayerProfile_TestBadgeFlag(player, UNK_020F457F[i]);
        if (has_badge == TRUE)
        {
            badges++;
        }
    }

    *ret_ptr = badges;
    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_HasBag(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);
    
    FUN_0205ECD4(state);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk0160(struct ScriptContext* ctx)
{
    u16* ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    *ret_ptr = (u16)FUN_0205ED3C(state);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk0161(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    FUN_0205ED1C(state);

    return 0;
}

THUMB_FUNC BOOL ScrCmd_Unk0162(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    FUN_0205ED2C(state);

    return 0;
}

THUMB_FUNC BOOL ScrCmd_Unk0163(struct ScriptContext* ctx)
{
    u16* ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    *ret_ptr = (u16)FUN_0205ED6C(state);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk0164(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    FUN_0205ED4C(state);

    return 0;
}

THUMB_FUNC BOOL ScrCmd_Unk0165(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    FUN_0205ED5C(state);

    return 0;
}

THUMB_FUNC BOOL ScrCmd_CheckGameCompleted(struct ScriptContext* ctx)
{
    u16* ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    *ret_ptr = (u16)FUN_0205ED0C(state);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_SetGameCompleted(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);

    FUN_0205ECFC(state);

    return 0;
}

THUMB_FUNC BOOL ScrCmd_GetSetStrength(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);
    u8 option = ScriptReadByte(ctx);
    u16* ret_ptr;

    switch (option)
    {
    case 1: //set strength to on
        FUN_0205F264(state, 1);
        break;
    case 0: //set strength to off
        FUN_0205F264(state, 0);
        break;
    case 2: //get whether strength is on or off
        ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
        *ret_ptr = (u16)FUN_0205F264(state, 2);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetSetFlash(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);
    u8 option = ScriptReadByte(ctx);
    u16* ret_ptr;

    switch (option)
    {
    case 1: //set flash to on
        FUN_0205F274(state);
        break;
    case 0: //set flash to off
        FUN_0205F284(state);
        break;
    case 2: //get whether flash is on or off
        ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
        *ret_ptr = (u16)FUN_0205F294(state);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetSetDefog(struct ScriptContext* ctx)
{
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);
    u8 option = ScriptReadByte(ctx);
    u16* ret_ptr;

    switch (option)
    {
    case 1: //set defog to on
        FUN_0205F2A4(state);
        break;
    case 0: //set defog to off
        FUN_0205F2B4(state);
        break;
    case 2: //get whether defog is on or off
        ret_ptr = GetVarPointer(ctx->unk80, ScriptReadHalfword(ctx));
        *ret_ptr = (u16)FUN_0205F2C4(state);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}
