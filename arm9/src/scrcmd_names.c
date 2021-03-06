#include "scrcmd.h"
#include "event_data.h"
#include "itemtool.h"
#include "nutdata.h"
#include "party.h"
#include "player_data.h"
#include "script_buffers.h"
#include "unk_02024E64.h"
#include "unk_02064E4C.h"
#include "unk_0207FC5C.h"

extern void* FUN_02039438(struct UnkSavStruct80* sav_ptr, int idx);

extern u32 FUN_020536D0(u32 gender, u32 avatar, u32 a2);
extern u32 FUN_0205F388(struct ScriptState* state);
extern u32 FUN_0205F398(struct ScriptState* state);
extern struct PCStorage* GetStoragePCPointer(struct SaveBlock2* sav2);
extern u32 FUN_0205F3C0(struct ScriptState* state);
extern u32 FUN_02054C14(u32 number);

THUMB_FUNC BOOL ScrCmd_GetPlayerName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    struct SaveBlock2* sav2 = ScriptEnvironment_GetSav2Ptr(sav_ptr);
    struct PlayerData* player = Sav2_PlayerData_GetProfileAddr(sav2);

    BufferPlayersName(*mgr, idx, player);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetRivalName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);

    BufferRivalsName(*mgr, idx, sav_ptr->saveBlock2);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetFriendName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);

    BufferFriendsName(*mgr, idx, sav_ptr->saveBlock2);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetPokemonName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 mon_idx = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    struct PlayerParty* party = SavArray_PlayerParty_get(sav_ptr->saveBlock2);
    struct Pokemon* mon = GetPartyMonByIndex(party, mon_idx);

    BufferBoxMonSpeciesName(*mgr, idx, &mon->box);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetItemName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 item = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferItemName(*mgr, idx, item);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetPocketName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 pocket = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferPocketName(*mgr, idx, pocket);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetTMHMMoveName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 tmhm = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u16 move = TMHMGetMove(tmhm);

    BufferMoveName(*mgr, idx, move);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetMoveName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 move = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferMoveName(*mgr, idx, move);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk00D5(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 unk = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u32 digits = FUN_02054C14(unk);

    BufferIntegerAsString(*mgr, idx, unk, digits, 1, TRUE);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk0280(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 unk = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u8 unk2 = ScriptReadByte(ctx);
    u8 digits = ScriptReadByte(ctx);
    if (unk2 == 0)
    {
        digits = (u8)FUN_02054C14(unk);
    }

    BufferIntegerAsString(*mgr, idx, unk, digits, unk2, TRUE);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetPokemonNickname(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 mon_idx = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    struct PlayerParty* party = SavArray_PlayerParty_get(sav_ptr->saveBlock2);
    struct Pokemon* pokemon = GetPartyMonByIndex(party, mon_idx);

    BufferBoxMonNickname(*mgr, idx, &pokemon->box);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk0251(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct PCStorage* pc = GetStoragePCPointer(sav_ptr->saveBlock2);
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 box_mon_idx = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    s32 box_no = box_mon_idx / 30;
    s32 slot_no = box_mon_idx % 30;
    struct BoxPokemon* box_mon = PCStorage_GetMonByIndexPair(pc, box_no, slot_no);

    BufferBoxMonNickname(*mgr, idx, box_mon);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetPoketchAppName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 app = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferPoketchAppName(*mgr, idx, app);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetTrainerClassName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 trainer_class = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferTrainerClassName(*mgr, idx, trainer_class);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk00D9(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct SaveBlock2* sav2 = ScriptEnvironment_GetSav2Ptr(sav_ptr);
    struct PlayerData* player = Sav2_PlayerData_GetProfileAddr(sav2);
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u32 gender = PlayerProfile_GetTrainerGender(player);
    u32 avatar = PlayerProfile_GetAvatar(player);
    u32 trainer_class = FUN_020536D0(gender, avatar, 2);

    BufferTrainerClassNameWithArticle(*mgr, idx, trainer_class);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk00DA(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 msg_no = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u16 unk1 = ScriptReadHalfword(ctx);
    u8 unk2 = ScriptReadByte(ctx);
    struct String* str = FUN_02040AE4(msg_no, 4);

    BufferString(*mgr, idx, str, unk1, unk2, 2);
    String_dtor(str);

    return FALSE;
}

THUMB_FUNC struct String* FUN_02040AE4(u32 msg_no, u32 heap_id)
{
    struct MsgData* msg_data = NewMsgDataFromNarc(1, NARC_MSGDATA_MSG, 362, heap_id);
    struct String* ret = NewString_ReadMsgData(msg_data, msg_no);
    DestroyMsgData(msg_data);

    return ret;
}

THUMB_FUNC BOOL ScrCmd_GetPlayerStarterName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);
    u32 msg_no = FUN_0205F388(state);
    struct String* str = FUN_02040AE4(msg_no, 4);

    BufferString(*mgr, idx, str, 0, 1, 2);
    String_dtor(str);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetRivalStarterName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);
    u32 msg_no = FUN_0205F398(state);
    struct String* str = FUN_02040AE4(msg_no, 4);

    BufferString(*mgr, idx, str, 0, 1, 2);
    String_dtor(str);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetCounterpartStarterName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);
    u32 msg_no = FUN_0205F3C0(state);
    struct String* str = FUN_02040AE4(msg_no, 4);

    BufferString(*mgr, idx, str, 0, 1, 2);
    String_dtor(str);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetDecorationName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 decoration = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferDecorationName(*mgr, idx, decoration);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetUndergroundTrapName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 underground_trap = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferUndergroundTrapName(*mgr, idx, underground_trap);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetUndergroundItemName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 underground_item = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferUndergroundItemName(*mgr, idx, underground_item);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetMapName(struct ScriptContext* ctx)
{
    struct String* str = String_ctor(22, 4);
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 map_no = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    FUN_02064E60(map_no, 4, str);
    BufferString(*mgr, idx, str, 0, 1, 2);
    String_dtor(str);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetBerryName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 berry = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u16 unk = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    struct String* nut_name = GetNutName((u16)(berry - FIRST_BERRY_IDX), 32);

    BufferString(*mgr, idx, nut_name, 0, unk < 2, 2);
    String_dtor(nut_name);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetNatureName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 nature = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferNatureName(*mgr, idx, nature);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetFashionName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 fashion = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferFashionName(*mgr, idx, fashion);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetWhiteRockInscription(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    struct String* str = String_ctor(11, 11);
    struct UnkStruct_02024E64* unk = FUN_02024EB4(ctx->unk80->saveBlock2);
    u16* unk_buffer = FUN_02024F0C(unk);

    CopyU16ArrayToString(str, unk_buffer);
    BufferString(*mgr, idx, str, 0, 0, gGameLanguage);
    String_dtor(str);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetPokemonMoveName(struct ScriptContext* ctx)
{
    struct UnkSavStruct80* sav_ptr = ctx->unk80;
    struct ScrStrBufs** mgr = FUN_02039438(sav_ptr, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 mon_idx = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u16 mon_move_idx = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    struct PlayerParty* party = SavArray_PlayerParty_get(sav_ptr->saveBlock2);
    struct Pokemon* pokemon = GetPartyMonByIndex(party, mon_idx);
    u16 move = (u16)GetMonData(pokemon, MON_DATA_MOVE1 + mon_move_idx, NULL);

    BufferMoveName(*mgr, idx, move);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetRibbonName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u8 unk = (u8)VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u16 ribbon = (u16)FUN_0207FC5C(unk, 3);

    BufferRibbonNameOrDesc(*mgr, idx, ribbon);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetSealName(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 seal = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferSealName(*mgr, idx, (u16)(seal - 1));

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetItemNameWithIndefArticle(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 item = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferItemNameWithIndefArticle(*mgr, idx, item);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetItemNamePlural(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 item = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferItemNamePlural(*mgr, idx, item);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetDecorationNameWithArticle(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 decoration = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferDecorationNameWithArticle(*mgr, idx, decoration);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetUndergroundTrapNameWithArticle(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 underground_trap = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferUndergroundTrapNameWithArticle(*mgr, idx, underground_trap);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetUndergroundItemNameWithArticle(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 underground_item = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferUndergroundItemNameWithArticle(*mgr, idx, underground_item);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk02C9(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 species = VarGet(ctx->unk80, ScriptReadHalfword(ctx));
    u16 unused1 = ScriptReadHalfword(ctx);
    u8 unused2 = ScriptReadByte(ctx);

    BufferSpeciesNameWithArticle(*mgr, idx, species);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk02CA(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    struct ScriptState* state = SavArray_Flags_get(ctx->unk80->saveBlock2);
    u32 species = FUN_0205F3C0(state);

    BufferSpeciesNameWithArticle(*mgr, idx, species);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetFashionNameWithArticle(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 fashion = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferFashionNameWithArticle(*mgr, idx, fashion);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_Unk02CC(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 trainer_class = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferTrainerClassNameWithArticle(*mgr, idx, trainer_class);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_GetSealNamePlural(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);
    u16 seal = VarGet(ctx->unk80, ScriptReadHalfword(ctx));

    BufferSealNamePlural(*mgr, idx, (u16)(seal - 1));

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_CapitalizeFirstChar(struct ScriptContext* ctx)
{
    struct ScrStrBufs** mgr = FUN_02039438(ctx->unk80, 15);
    u8 idx = ScriptReadByte(ctx);

    ScrStrBufs_UpperFirstChar(*mgr, idx);

    return FALSE;
}
