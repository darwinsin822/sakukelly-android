.class public final enum Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
.super Ljava/lang/Enum;
.source "VorbisAlbumArtistReadOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field public static final enum READ_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field public static final enum READ_ALBUMARTIST_THEN_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field public static final enum READ_JRIVER_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field public static final enum READ_JRIVER_THEN_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    const-string v1, "READ_ALBUMARTIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    const-string v2, "READ_JRIVER_ALBUMARTIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_JRIVER_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    .line 14
    new-instance v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    const-string v3, "READ_ALBUMARTIST_THEN_JRIVER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST_THEN_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    .line 15
    new-instance v3, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    const-string v4, "READ_JRIVER_THEN_ALBUMARTIST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_JRIVER_THEN_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    .line 10
    filled-new-array {v0, v1, v2, v3}, [Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->$VALUES:[Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
    .locals 1

    .line 10
    const-class v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
    .locals 1

    .line 10
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->$VALUES:[Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-object v0
.end method
