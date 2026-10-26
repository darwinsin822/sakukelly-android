.class public Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;
.super Lorg/jaudiotagger/tag/id3/AbstractTagFrame;
.source "Lyrics3v2Field.java"


# static fields
.field protected static LYRICS_FRAME_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    const-string v1, "USLT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v1, "SYLT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v1, "COMM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "TCOM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v1, "TALB"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v1, "TPE1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "TIT2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->LYRICS_FRAME_IDS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 160
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 97
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "USLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 101
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V

    goto/16 :goto_0

    .line 103
    :cond_0
    const-string v1, "SYLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 106
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V

    goto/16 :goto_0

    .line 108
    :cond_1
    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_0

    .line 113
    :cond_2
    const-string v1, "TCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 116
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    if-eqz p1, :cond_6

    .line 117
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 119
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_0

    .line 122
    :cond_3
    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_6

    .line 125
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 127
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_0

    .line 130
    :cond_4
    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_6

    .line 133
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 135
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_0

    .line 138
    :cond_5
    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_6

    .line 141
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 143
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    :cond_6
    :goto_0
    return-void

    .line 148
    :cond_7
    new-instance p1, Lorg/jaudiotagger/tag/TagException;

    const-string v0, "Cannot createField Lyrics3v2 field from given ID3v2 frame"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTagFrame;)V

    return-void
.end method

.method public static isLyrics3v2Field(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    .line 84
    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->LYRICS_FRAME_IDS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 251
    const-string v0, "AUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 255
    :cond_0
    const-string v0, "EAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAL;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 259
    :cond_1
    const-string v0, "EAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyEAR;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 263
    :cond_2
    const-string v0, "ETT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyETT;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 267
    :cond_3
    const-string v0, "IMG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIMG;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIMG;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 271
    :cond_4
    const-string v0, "IND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 275
    :cond_5
    const-string v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyINF;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 279
    :cond_6
    const-string v0, "LYR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 281
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 285
    :cond_7
    new-instance p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyUnsupported;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_0

    .line 170
    const-string v0, ""

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidTagException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 190
    new-array v0, v0, [B

    .line 194
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 199
    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 200
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 202
    invoke-static {v3}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->isLyrics3v2FieldIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-direct {p0, v3, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    return-void

    .line 204
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    const-string v0, " is not a valid ID3v2.4 frame"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_0

    .line 216
    const-string v0, ""

    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3SaveEmptyField()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x3

    .line 229
    new-array v0, v0, [B

    .line 230
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 231
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 233
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_2
    return-void
.end method
