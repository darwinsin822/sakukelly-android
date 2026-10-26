.class public Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;
.super Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyLYR.java"


# instance fields
.field private lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jaudiotagger/tag/datatype/Lyrics3Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 75
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;)V
    .locals 4

    .line 57
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v1, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 64
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    new-instance v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-direct {v3, v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Lorg/jaudiotagger/tag/datatype/Lyrics3Line;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readString(Ljava/lang/String;)V
    .locals 4

    .line 363
    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 368
    :goto_0
    const-string v2, "Lyric Line"

    if-ltz v0, :cond_0

    .line 370
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-direct {v3, v2, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 372
    invoke-virtual {v3, v1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 375
    sget-object v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 380
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 381
    new-instance v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-direct {v0, v2, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 382
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private writeString()Ljava/lang/String;
    .locals 4

    .line 395
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 397
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->writeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;)V
    .locals 7

    .line 182
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 185
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 188
    instance-of v3, v2, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    if-eqz v3, :cond_0

    .line 190
    check-cast v2, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    .line 193
    new-instance v3, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;

    invoke-direct {v3, v2}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;-><init>(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V

    .line 194
    new-instance v2, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;

    const-string v4, "Time Stamp"

    invoke-direct {v2, v4, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 195
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodySYLT;->getTimeStampFormat()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v2, v4, v5, v6}, Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;->setTimeStamp(JB)V

    .line 198
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 201
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->addTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v4, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    const-string v5, "Lyric Line"

    invoke-direct {v4, v5, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 205
    invoke-virtual {v4, v3}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;)V

    .line 206
    invoke-virtual {v4, v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setTimeStamp(Lorg/jaudiotagger/tag/datatype/Lyrics3TimeStamp;)V

    .line 207
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addLyric(Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;)V
    .locals 2

    .line 220
    new-instance v0, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    const-string v1, "Lyric Line"

    invoke-direct {v0, v1, p0}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 221
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->getLyric()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 231
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 236
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 238
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "LYR"

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .line 131
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 144
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    .line 145
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public hasTimeStamp()Z
    .locals 3

    .line 249
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 251
    check-cast v2, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Lyrics3Line;->hasTimeStamp()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4

    .line 159
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 166
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 174
    :cond_2
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/datatype/Lyrics3Line;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidTagException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 277
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 280
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 282
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    const-string v0, "Lyircs3v2 Field has size of zero."

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_1
    :goto_0
    new-array v0, v0, [B

    .line 292
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 293
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 294
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 320
    new-array v1, v0, [B

    .line 323
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->getSize()I

    move-result v2

    .line 324
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 326
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x5

    if-ge v5, v6, :cond_0

    const/16 v6, 0x30

    .line 328
    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    move v6, v4

    .line 333
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int v7, v6, v5

    .line 335
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 338
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 339
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    if-lez v2, :cond_3

    .line 343
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->writeString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    .line 346
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 348
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 351
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_3
    return-void
.end method
