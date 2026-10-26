.class public Lorg/jaudiotagger/tag/mp4/Mp4Tag;
.super Lorg/jaudiotagger/audio/generic/AbstractTag;
.source "Mp4Tag.java"


# static fields
.field private static final tagFieldToMp4Field:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    .line 53
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ACOUSTID_FINGERPRINT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ACOUSTID_FINGERPRINT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ACOUSTID_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ACOUSTID_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTISTS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTISTS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTISTS_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_ARTISTS_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ALBUM_YEAR:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->AMAZON_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ASIN:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARRANGER_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTISTS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTISTS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTISTS_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTISTS_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BARCODE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->BARCODE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BPM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->BPM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CATALOG_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CATALOGNO:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CHOIR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CHOIR:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CHOIR_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CHOIR_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CLASSICAL_CATALOG:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CLASSICAL_CATALOG:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CLASSICAL_NICKNAME:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CLASSICAL_NICKNAME:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMMENT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COUNTRY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->CONDUCTOR_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_1:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_2:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_3:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_4:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_CUSTOM_5:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_SUBTITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISC_SUBTITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DJMIXER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DJMIXER_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_ELECTRONIC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_ELECTRONIC:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENCODER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENGINEER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENGINEER_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENSEMBLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENSEMBLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENSEMBLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ENSEMBLE_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->FBPM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->FBPM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUP:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GROUP:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUPING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GROUPING:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->INSTRUMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->INSTRUMENT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->INVOLVEDPEOPLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->INVOLVEDPEOPLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IPI:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->IPI:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ISRC:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ISWC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ISWC:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_CLASSICAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->IS_CLASSICAL:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_GREATEST_HITS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->IS_GREATEST_HITS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_HD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->IS_HD:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_LIVE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->IS_LIVE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_SOUNDTRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->IS_SOUNDTRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->JAIKOZ_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->JAIKOZ_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->KEY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->KEY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LYRICIST_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LYRICS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MEDIA:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MEDIA:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MIXER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MIXER_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_ACOUSTIC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_ACOUSTIC:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_AGGRESSIVE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_AGGRESSIVE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_AROUSAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_AROUSAL:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_DANCEABILITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_DANCEABILITY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_HAPPY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_HAPPY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_INSTRUMENTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_INSTRUMENTAL:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_PARTY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_PARTY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_RELAXED:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_RELAXED:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_SAD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_SAD:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_VALENCE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOOD_VALENCE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOVEMENT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_DISCID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ORIGINAL_RELEASE_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ORIGINALALBUMID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUMARTISTID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUMID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->RELEASECOUNTRY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_RELEASE_GROUPID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUM_STATUS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_RELEASE_TRACKID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_ALBUM_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_TRACKID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORKID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RECORDING_WORK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_RECORDING_WORK_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RECORDING_WORK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_RECORDING_WORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICIP_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MUSICIP_PUID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OCCASION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_OCCASION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OPUS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->OPUS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORCHESTRA:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ORCHESTRA:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORCHESTRA_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ORCHESTRA_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_ALBUM_TITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINALRELEASEDATE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ORIGINALRELEASEDATE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_ORIGINAL_YEAR:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OVERALL_WORK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->OVERALL_WORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PART:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART_NUMBER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PART_NUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PART_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PERFORMER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER_NAME:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PERFORMER_NAME:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER_NAME_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PERFORMER_NAME_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERIOD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PERIOD:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PRODUCER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->PRODUCER_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->QUALITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->MM_QUALITY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RANKING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->RANKING:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SCORE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->LABEL:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORDINGDATE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->RECORDINGDATE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORDINGSTARTDATE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->RECORDINGSTARTDATE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORDINGENDDATE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->RECORDINGENDDATE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORDINGLOCATION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->RECORDINGLOCATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->REMIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->REMIXER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ROONALBUMTAG:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ROONALBUMTAG:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ROONTRACKTAG:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ROONTRACKTAG:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SECTION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SECTION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SINGLE_DISC_TRACK_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SINGLE_DISC_TRACK_NO:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SONGKONG_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SONGKONG_ID:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SUBTITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->SUBTITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TAGS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TAGS:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TEMPO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TEMPO:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TIMBRE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TIMBRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TITLE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_MOVEMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TITLE_MOVEMENT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TONALITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TONALITY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->VERSION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->VERSION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->WORK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->WORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DAY:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->WORK_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->WORK_TYPE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method public static getMapping()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    return-object v0
.end method


# virtual methods
.method public varargs addField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 646
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 658
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_1

    .line 653
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public createArtworkField([B)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 621
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object v0
.end method

.method public createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 962
    sget-object p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->TRUE_VALUE:Ljava/lang/String;

    .line 963
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-object v0

    .line 967
    :cond_0
    sget-object p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;->FALSE_VALUE:Ljava/lang/String;

    .line 968
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-object v0
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 685
    aget-object p2, p2, v0

    .line 688
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v1, :cond_3

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v1, :cond_3

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-eq p1, v1, :cond_3

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_7

    .line 725
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 727
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 730
    :cond_1
    invoke-static {p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 732
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 736
    :cond_2
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 697
    :cond_3
    :goto_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 698
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_4

    .line 700
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p1, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(I)V

    return-object p1

    .line 702
    :cond_4
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_5

    .line 704
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p1, v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(II)V

    return-object p1

    .line 706
    :cond_5
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_6

    .line 708
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p1, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(I)V

    return-object p1

    .line 710
    :cond_6
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_7

    .line 712
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p1, v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 740
    :cond_7
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 719
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " is not a number as required"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 682
    :cond_8
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1

    .line 678
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 631
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object v0
.end method

.method public createField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_f

    if-eqz p1, :cond_e

    .line 877
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_2

    .line 879
    const-string p1, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 885
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 881
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 888
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_4

    .line 890
    invoke-static {p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 892
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 896
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->NOT_STANDARD_MP$_GENRE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 899
    :cond_4
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_5

    .line 901
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 903
    :cond_5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->DISC_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_6

    .line 905
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 907
    :cond_6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->TRACK_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_7

    .line 909
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 911
    :cond_7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->BYTE:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_8

    .line 913
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    return-object v0

    .line 915
    :cond_8
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->NUMBER:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_9

    .line 917
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 919
    :cond_9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->REVERSE_DNS:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_a

    .line 921
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V

    return-object v0

    .line 923
    :cond_a
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-eq v0, v1, :cond_d

    .line 927
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->TEXT:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_b

    .line 929
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 931
    :cond_b
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    move-result-object p2

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->UNKNOWN:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    if-ne p2, v0, :cond_c

    .line 933
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 937
    :cond_c
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 925
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 872
    :cond_e
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1

    .line 868
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createGenreField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 2

    if-eqz p1, :cond_2

    .line 247
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 252
    :cond_0
    invoke-static {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 258
    :cond_1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 243
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 520
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 521
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->KEY:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_0

    .line 523
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->KEY_OLD:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->deleteField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)V

    .line 524
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->deleteField(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :cond_0
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 528
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 531
    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 536
    :cond_1
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 537
    invoke-virtual {p1, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->setTrackNo(I)V

    return-void

    .line 541
    :cond_2
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_4

    .line 543
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    .line 546
    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 551
    :cond_3
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 552
    invoke-virtual {p1, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->setTrackTotal(I)V

    return-void

    .line 556
    :cond_4
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_6

    .line 558
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    .line 561
    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 566
    :cond_5
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 567
    invoke-virtual {p1, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->setDiscNo(I)V

    return-void

    .line 571
    :cond_6
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_8

    .line 573
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    .line 576
    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 581
    :cond_7
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 582
    invoke-virtual {p1, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->setDiscTotal(I)V

    return-void

    .line 586
    :cond_8
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v1, :cond_9

    .line 588
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 589
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_9
    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 517
    :cond_a
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 607
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 432
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v1

    .line 394
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 396
    sget-object v3, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v3, :cond_0

    .line 398
    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_0
    sget-object v3, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v3, :cond_1

    .line 402
    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_1
    sget-object v3, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v3, :cond_2

    .line 406
    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_2
    sget-object v3, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v3, :cond_3

    .line 410
    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_3
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .line 943
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->get(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 944
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 946
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 948
    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;

    .line 949
    invoke-static {}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->getNew()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v3

    .line 950
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getData()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    .line 951
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v2

    invoke-static {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagCoverField;->getMimeTypeForImageType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 952
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 304
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    if-eqz v0, :cond_10

    .line 310
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->KEY:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_1

    .line 315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 317
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->KEY_OLD:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0

    .line 321
    :cond_1
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_3

    .line 323
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 325
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0

    .line 329
    :cond_3
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_6

    .line 331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 333
    move-object v2, v0

    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 334
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_4

    .line 336
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1

    .line 341
    :cond_6
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_9

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 345
    move-object v2, v0

    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 346
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_7

    .line 348
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    return-object v1

    .line 353
    :cond_9
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_c

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 357
    move-object v2, v0

    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 358
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_a

    .line 360
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    return-object v1

    .line 365
    :cond_c
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_f

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 369
    move-object v2, v0

    check-cast v2, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 370
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_d

    .line 372
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    return-object v1

    :cond_f
    return-object v0

    .line 307
    :cond_10
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1

    .line 302
    :cond_11
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 486
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 484
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 492
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 496
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Lorg/jaudiotagger/tag/mp4/Mp4TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 505
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/mp4/Mp4TagField;

    return-object p1

    .line 503
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 446
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_4

    .line 448
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/TagField;

    .line 449
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_0

    .line 451
    check-cast p2, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 453
    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 455
    check-cast p2, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 457
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 459
    check-cast p2, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 461
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    .line 463
    check-cast p2, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 467
    :cond_3
    invoke-interface {p2}, Lorg/jaudiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 470
    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)Z
    .locals 0

    .line 289
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isAllowedEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .line 264
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 754
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p2

    .line 756
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 758
    invoke-interface {p2}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 760
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->deleteField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)V

    goto :goto_0

    .line 762
    :cond_0
    invoke-interface {p2}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 764
    sget-object p1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->deleteField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;)V

    .line 767
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 795
    :cond_0
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 797
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 798
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 804
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 805
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    .line 806
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    .line 807
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v0

    .line 808
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_2

    .line 810
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    .line 812
    :cond_2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_3

    .line 814
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v0

    .line 817
    :cond_3
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p1, v1, v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TrackField;-><init>(II)V

    .line 818
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_2

    .line 800
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_2

    .line 821
    :cond_5
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 823
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 824
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 830
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 831
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    .line 832
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    .line 833
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v0

    .line 834
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_7

    .line 836
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    .line 838
    :cond_7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-lez v2, :cond_8

    .line 840
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v0

    .line 843
    :cond_8
    new-instance p1, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p1, v1, v0}, Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(II)V

    .line 844
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_2

    .line 826
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_2

    .line 849
    :cond_a
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_2
    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 779
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->createField(Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 780
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mpeg4 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
